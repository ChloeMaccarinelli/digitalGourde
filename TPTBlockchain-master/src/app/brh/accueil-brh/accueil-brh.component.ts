import { Component, OnInit } from '@angular/core';
import { Title } from '@angular/platform-browser';
import { faCircle, faPlay } from '@fortawesome/free-solid-svg-icons';
import { NodeapiService, apiUrl } from './../../nodeapi.service';

@Component({
  selector: 'app-accueil-brh',
 templateUrl: './accueil-brh.component.html',
  styleUrls: ['./accueil-brh.component.css']
})
export class AccueilBrhComponent implements OnInit {
  faCircle = faCircle;
  constructor(private titleService: Title, private nodeApi: NodeapiService) { }

  ngOnInit() {

  }
}
