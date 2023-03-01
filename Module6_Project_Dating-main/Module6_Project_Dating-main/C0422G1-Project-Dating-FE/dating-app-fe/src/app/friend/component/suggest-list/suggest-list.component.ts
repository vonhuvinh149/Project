import {Component, OnInit} from '@angular/core';
import {User} from "../../../user/model/user";
import {SuggestService} from "../../friend-service/suggest.service";
import {TokenStorageService} from "../../../service/authentication/token-storage.service";
import {AuthenticationService} from "../../../service/authentication/authentication.service";

@Component({
  selector: 'app-suggest-list',
  templateUrl: './suggest-list.component.html',
  styleUrls: ['./suggest-list.component.css']
})
export class SuggestListComponent implements OnInit {
  idAccount: number;
  user: User;
  suggestList: User[];

  constructor(private suggestService: SuggestService,
              private token: TokenStorageService,
              private auth: AuthenticationService) {
    this.auth.getUserByAccount(this.idAccount = token.getUser().idAccount).subscribe(n => {
      this.user = n;
    }, error => {
    }, () => {
      this.suggestService.getSuggestAllRequest(this.user.idUser, this.user.gender).subscribe(data=>{
        this.suggestList=data;
        console.log(this.suggestList)
      })
    })


  }

  ngOnInit(): void {
  }

  goHeader() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
  }
}
