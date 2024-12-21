<?php

namespace App\Enums;

use Filament\Support\Contracts\HasColor;
use Filament\Support\Contracts\HasLabel;

enum StatusPinjaman: string implements HasLabel, HasColor
{
    case DIPINJAM = 'dipinjam';
    case DIKEMBALIKAN = 'dikembalikan';

    public function getLabel(): string
    {
        return match ($this) {
            self::DIPINJAM => '🕗 Sedang Dipinjam',
            self::DIKEMBALIKAN => '✅ Sudah Dikembalikan',
        };
    }

    public function getColor(): string
    {
        return match ($this) {
            self::DIPINJAM => 'warning',
            self::DIKEMBALIKAN => 'success',
        };
    }
}
