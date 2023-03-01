import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {ReportDetailComponent} from "./component/report-detail/report-detail.component";
import {CreateReportDetailComponent} from "./component/create-report-detail/create-report-detail.component";


const routes: Routes = [
  {
    path: 'report-detail',
    component: ReportDetailComponent
  },
  {
    path: 'report',
    component: CreateReportDetailComponent
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class WebsiteRoutingModule { }
