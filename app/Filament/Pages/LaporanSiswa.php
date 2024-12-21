<?php

namespace App\Filament\Pages;

use Filament\Pages\Page;
use App\Models\Siswa;

class LaporanSiswa extends Page
{
    protected static ?string $navigationIcon = 'heroicon-o-user-group';
    protected static string $view = 'filament.pages.laporan-siswa';
    protected static ?string $navigationGroup = 'Laporan';
    protected static ?int $navigationSort = 1;

    public function getData()
    {
        return Siswa::withCount('peminjaman')->get();
    }
}
