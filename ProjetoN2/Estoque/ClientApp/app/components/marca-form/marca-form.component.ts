import { marca } from './../../models/marca';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-marca-form',
  templateUrl: './marca-form.component.html',
  styleUrls: ['./marca-form.component.css']
})
export class MarcaFormComponent implements OnInit {
  marca: marca = {
    id: 0,
    nome: ''
  };

  constructor() { }

  ngOnInit() {
  }

}
