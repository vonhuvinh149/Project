import {NgModule} from '@angular/core';
import {Routes, RouterModule} from '@angular/router';

import {SearchComponent} from "./component/search/search.component";
import {PersonalPageComponent} from "./component/personal-page/personal-page.component";
import {UpgradeAccountComponent} from "./component/upgrade-account/upgrade-account.component";
import {AuthGuardService} from "../service/authentication/auth-guard.service";
import {UpdateAvatarComponent} from "./component/update-avatar/update-avatar.component";
import {DetailPostComponent} from "./component/detail-post/detail-post.component";
import {ListUserComponent} from "./component/list-user/list-user.component";
import {CreateUserComponent} from "./component/create-user/create-user.component";
import {PostComponent} from "./component/post/post.component";


const routes: Routes = [{
  path: "searchFriend",
  component: SearchComponent, canActivate: [AuthGuardService]

},
  {
    path: "users/:id",
    component: PersonalPageComponent,
    canActivate: [AuthGuardService]
  },
  {
    path: "upgradeAccount",
    component: UpgradeAccountComponent,
    canActivate: [AuthGuardService]
  },
  {
    path: "updateAvatar",
    component: UpdateAvatarComponent,
    canActivate: [AuthGuardService]
  },

  {path: "newFeed", component: PostComponent, canActivate: [AuthGuardService]},

  {path: "user/newFeed/:id/:id1", component: DetailPostComponent, canActivate: [AuthGuardService]},

  {path: "listUser", component: ListUserComponent, canActivate: [AuthGuardService]},
  {path: "create-user/:id", component: CreateUserComponent, canActivate: [AuthGuardService]},
  {path: "detailPost/:idPost", component: DetailPostComponent, canActivate: [AuthGuardService]},
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class UserRoutingModule {
}
