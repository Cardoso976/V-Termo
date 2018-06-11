import { marca } from './../../models/marca';
import { MarcaService } from './../../services/marca.service';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-view-marca',
  templateUrl: './view-marca.component.html',
  styleUrls: ['./view-marca.component.css']
})
export class ViewMarcaComponent implements OnInit {
  marcas : marca [] = [];

  constructor(private marcaService : MarcaService) { }

  ngOnInit() {
    this.marcaService.getMarcas()
      .subscribe(marcas => this.marcas = marcas);
  }
}
