<x-filament::page>
    <div class="space-y-6">
        <h2 class="text-xl font-bold">Laporan Peminjaman</h2>

        <div class="space-y-4">
            <h3 class="text-lg font-semibold">Buku yang Dipinjam</h3>
            <table class="table-auto w-full border-collapse border border-gray-300">
                <thead>
                    <tr>
                        <th class="border border-gray-300 p-2">Judul Buku</th>
                        <th class="border border-gray-300 p-2">Nama Siswa</th>
                        <th class="border border-gray-300 p-2">Tanggal Pinjam</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($this->getData()['dipinjam'] as $item)
                        <tr>
                            <td class="border border-gray-300 p-2">{{ $item->buku->judul }}</td>
                            <td class="border border-gray-300 p-2">{{ $item->siswa->nama }}</td>
                            <td class="border border-gray-300 p-2">{{ $item->tanggal_pinjam }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

        <div class="space-y-4">
            <h3 class="text-lg font-semibold">Buku yang Dikembalikan</h3>
            <table class="table-auto w-full border-collapse border border-gray-300">
                <thead>
                    <tr>
                        <th class="border border-gray-300 p-2">Judul Buku</th>
                        <th class="border border-gray-300 p-2">Nama Siswa</th>
                        <th class="border border-gray-300 p-2">Tanggal Kembali</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($this->getData()['dikembalikan'] as $item)
                        <tr>
                            <td class="border border-gray-300 p-2">{{ $item->buku->judul }}</td>
                            <td class="border border-gray-300 p-2">{{ $item->siswa->nama }}</td>
                            <td class="border border-gray-300 p-2">{{ $item->tanggal_kembali }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</x-filament::page>
