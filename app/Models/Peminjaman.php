<?php

namespace App\Models;

use App\Concerns\HasUlids;
use App\Enums\StatusPinjaman;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\SoftDeletes;

class Peminjaman extends Model
{
    use HasUlids, SoftDeletes;

    protected $table = 'peminjaman';

    protected $fillable = [
        'siswa_id',
        'buku_id',
        'tanggal_pinjam',
        'tanggal_kembali',
        'status',
    ];

    protected $casts = [
        'tanggal_pinjam' => 'datetime',
        'tanggal_kembali' => 'datetime',
        'status' => StatusPinjaman::class,
    ];

    public function buku(): BelongsTo
    {
        return $this->belongsTo(Buku::class);
    }

    public function siswa(): BelongsTo
    {
        return $this->belongsTo(Siswa::class);
    }
}
