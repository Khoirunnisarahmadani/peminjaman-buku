<?php

namespace App\Filament\Widgets;

use Filament\Widgets\Widget;

class ProfileWidget extends Widget
{
    protected static string $view = 'filament.widgets.profile-widget';

    // Data yang akan ditampilkan
    public function getData(): array
    {
        return [
            'nama' => 'Khoirunnisa Ramadhani',
            'kelas' => 'SI503',
            'matkul' => 'Pemrograman berbasis web',
            'foto' => url('image/foto.jpeg'),
        ];
    }
}
