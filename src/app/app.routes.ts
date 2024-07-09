import { Routes } from '@angular/router';
import { HomeComponent } from './pages/home/home.component';
import { BasicComponent } from './pages/basic/basic.component';
import { ProComponent } from './pages/pro/pro.component';
import { CustomComponent } from './pages/custom/custom.component';

export const routes: Routes = [
    { path: "", redirectTo: "home", pathMatch: "full" },
    { path: "home", component: HomeComponent },
    { path: "basic", component: BasicComponent },
    { path: "pro", component: ProComponent },
    { path: "custom", component: CustomComponent }
];
