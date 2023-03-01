import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {ReadMessageComponent} from "./component/read-message/read-message.component";


const routes: Routes = [
  {
    path:"message",
    component:ReadMessageComponent
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class ChatRoutingModule { }
