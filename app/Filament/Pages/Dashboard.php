<?php

namespace App\Filament\Pages;

use App\Filament\Widgets\AccountWidget;
use Filament\Pages\Page;
use Filament\Pages\Dashboard as BaseDashboard;

class Dashboard extends BaseDashboard
{
    // protected static string $routePath = '/dashboard';

    // protected static string $view = 'filament.pages.dashboard';

    protected static ?string $navigationIcon = 'carbon-dashboard';

    public function getWidgets(): array
    {
        return [
            AccountWidget::class,
        ];
    }
}
