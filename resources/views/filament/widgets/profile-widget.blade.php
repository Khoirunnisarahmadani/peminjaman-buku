<x-filament-widgets::widget>
    <x-filament::section>
        <div class="bg-white shadow rounded-lg p-6 space-y-4">
            <h2 class="text-xl font-bold">Data Profil</h2>
            <div>
                <p><strong>Nama:</strong> {{ $this->getData()['nama'] }}</p>
                <p><strong>Kelas:</strong> {{ $this->getData()['kelas'] }}</p>
                <p><strong>Matkul:</strong> {{ $this->getData()['matkul'] }}</p>
            </div>
            <div>
                <h3 class="text-lg font-semibold">Foto Profil</h3>
                <img src="{{ $this->getData()['foto'] }}" alt="Foto" class="w-32 h-32 object-cover rounded">
            </div>
        </div>

    </x-filament::section>
</x-filament-widgets::widget>
