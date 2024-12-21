<x-filament::page>
    <div class="space-y-6">
        <h2 class="text-xl font-bold">Laporan Siswa yang Meminjam</h2>

        <table class="table-auto w-full border-collapse border border-gray-300">
            <thead>
                <tr>
                    <th class="border border-gray-300 p-2">Nama Siswa</th>
                    <th class="border border-gray-300 p-2">NIS</th>
                    <th class="border border-gray-300 p-2">Kelas</th>
                    <th class="border border-gray-300 p-2">Total Peminjaman</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($this->getData() as $siswa)
                    <tr>
                        <td class="border border-gray-300 p-2">{{ $siswa->nama }}</td>
                        <td class="border border-gray-300 p-2">{{ $siswa->nis }}</td>
                        <td class="border border-gray-300 p-2">{{ $siswa->kelas }}</td>
                        <td class="border border-gray-300 p-2">{{ $siswa->peminjaman_count }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</x-filament::page>
