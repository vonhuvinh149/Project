import {Component, OnInit} from '@angular/core';
import {Router} from "@angular/router";
import {User} from "../../../user/model/user";
import {FriendService} from "../../friend-service/friend-service.service";
import {TokenStorageService} from "../../../service/authentication/token-storage.service";
import {AuthenticationService} from "../../../service/authentication/authentication.service";
import {Toast, ToastrService} from "ngx-toastr";

@Component({
  selector: 'app-friend-request',
  templateUrl: './friend-request.component.html',
  styleUrls: ['./friend-request.component.css']
})
export class FriendRequestComponent implements OnInit {
  myIdAccount: number;
  myId: number;
  requestList: User[];
  mess:string;
  user: User

  constructor(private friendService: FriendService,
              private router: Router,
              private token: TokenStorageService,
              private  auth: AuthenticationService,
              private toast:ToastrService) {
    this.myIdAccount = this.token.getUser().idAccount;
    this.auth.getUserByAccount(this.myIdAccount).subscribe(data => {
      this.user = data
      this.myId = this.user.idUser;

    }, e => {
    }, () => {
      this.friendService.getRequest(this.myId).subscribe(data => {
        this.requestList = data;
      },e=>{},()=>{
        if (!this.requestList){
          this.toast.info("Hiện tại chưa có lời mời nào");
          this.mess="Hiện tại chưa có lời mời nào"
        }
      })
    })
  }

  ngOnInit(): void {


  }


  accept(myId: number, idFriend: number) {
    this.friendService.accept(myId, idFriend).subscribe(n => {

      this.friendService.getRequest(this.myId).subscribe(data => {
        this.requestList = data;
      })
    })
  }

  denied(myId: number, idFriend: number) {
    this.friendService.denied(myId, idFriend).subscribe(n => {

      this.friendService.getRequest(this.myId).subscribe(data => {
        this.requestList = data;
      })
    })
  }
}
