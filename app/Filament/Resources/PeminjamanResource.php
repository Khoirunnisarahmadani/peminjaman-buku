<?php

namespace App\Filament\Resources;

use App\Enums\StatusPinjaman;
use App\Filament\Resources\PeminjamanResource\Pages;
use App\Filament\Resources\PeminjamanResource\RelationManagers;
use App\Models\Buku;
use App\Models\Peminjaman;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class PeminjamanResource extends Resource
{
    protected static ?string $model = Peminjaman::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    protected static ?string $navigationLabel = 'Peminjaman';

    protected static ?string $pluralLabel = 'Peminjaman';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Select::make('buku_id')
                    ->label('Buku')
                    ->relationship('buku', 'judul')
                    ->required()
                    ->native(false)
                    ->afterStateUpdated(function ($state) {
                        $buku = Buku::find($state);
                        if ($buku && $buku->stok > 0) {
                            $buku->decrement('stok');
                        }
                    })
                    ->columnSpanFull(),
                Forms\Components\Select::make('siswa_id')
                    ->label('Siswa')
                    ->native(false)
                    ->relationship('siswa', 'nama')
                    ->required()
                    ->columnSpanFull(),
                Forms\Components\DatePicker::make('tanggal_pinjam')
                    ->label('Tanggal Pinjam')
                    ->required()
                    ->columnSpanFull()
                    ->native(false),
                Forms\Components\DatePicker::make('tanggal_kembali')
                    ->label('Tanggal Kembali')
                    ->required()
                    ->columnSpanFull()
                    ->native(false),
                Forms\Components\Select::make('status')
                    ->options(StatusPinjaman::class)
                    ->columnSpanFull()
                    ->native(false),

            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('buku.judul')
                    ->label('Judul Buku'),
                Tables\Columns\TextColumn::make('siswa.nama')
                    ->label('Nama Siswa'),
                Tables\Columns\TextColumn::make('tanggal_pinjam')
                    ->date(),
                Tables\Columns\TextColumn::make('tanggal_kembali')
                    ->date(),
                Tables\Columns\TextColumn::make('status')
                    ->badge(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\ActionGroup::make([

                    Tables\Actions\Action::make('kembalikan')
                        ->label('Kembalikan Buku')
                        ->color('success')
                        ->icon('heroicon-s-check')
                        ->hidden(fn(Model $record) => $record->status === 'dipinjam')
                        ->action(function (Model $record) {
                            $record->update([
                                'status' => 'dikembalikan',
                                'tanggal_kembali' => now(),
                            ]);

                            $record->buku->increment('stok');
                        }),
                    Tables\Actions\EditAction::make(),
                    Tables\Actions\DeleteAction::make(),
                ])
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ManagePeminjaman::route('/'),
        ];
    }
}
