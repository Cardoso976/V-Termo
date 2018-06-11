import { AppErrorHandler } from './app.error-handler';
import { ErrorHandler } from '@angular/core';
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
import { RouterModule } from '@angular/router';
import {ToastyModule} from 'ng2-toasty';

import { MarcaService } from './services/marca.service';
import * as Raven from 'raven-js';

import { AppComponent } from './components/app/app.component';
import { NavMenuComponent } from './components/navmenu/navmenu.component';
import { HomeComponent } from './components/home/home.component';
import { FetchDataComponent } from './components/fetchdata/fetchdata.component';
import { CounterComponent } from './components/counter/counter.component';
import { MarcaFormComponent } from './components/marca-form/marca-form.component';
import { ViewMarcaComponent } from './components/view-marca/view-marca.component';
import { MarcaListComponent } from './components/marca-list/marca-list.component';

Raven
  .config('https://fea869838b90474aaa0dfb21e1bcad0f@sentry.io/1222781')
  .install();


@NgModule({
    declarations: [
        AppComponent,
        NavMenuComponent,
        CounterComponent,
        FetchDataComponent,
        HomeComponent,
        MarcaFormComponent,
        ViewMarcaComponent,
        MarcaListComponent
    ],
    imports: [
        CommonModule,
        HttpModule,
        FormsModule,
        ToastyModule.forRoot(),
        RouterModule.forRoot([
            { path: '', redirectTo: 'home', pathMatch: 'full' },
            { path: 'home', component: HomeComponent },
            { path: 'marcas/new', component: MarcaFormComponent },
            { path: 'marcas/edit/:id', component: MarcaFormComponent },
            { path: 'marcas/:id', component: ViewMarcaComponent },
            { path: 'marcas', component: MarcaListComponent },
            { path: 'counter', component: CounterComponent },
            { path: 'fetch-data', component: FetchDataComponent },
            { path: '**', redirectTo: 'home' }
        ])
    ],
    providers: [
        { provide: ErrorHandler, useClass: AppErrorHandler },
        MarcaService
    ]
})
export class AppModuleShared {
}
