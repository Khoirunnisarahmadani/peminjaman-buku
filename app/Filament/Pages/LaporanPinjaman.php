<?php

namespace App\Filament\Pages;

use Filament\Pages\Page;
use App\Models\Peminjaman;

class LaporanPinjaman extends Page
{
    protected static ?string $navigationIcon = 'heroicon-o-check';
    protected static string $view = 'filament.pages.laporan-pinjaman';
    protected static ?string $navigationGroup = 'Laporan';
    protected static ?int $navigationSort = 0;

    public function getData()
    {
        return [
            'dipinjam' => Peminjaman::where('status', 'dipinjam')->get(),
            'dikembalikan' => Peminjaman::where('status', 'dikembalikan')->get(),
        ];
    }
}
