import { marca } from './../../models/marca';
import { Component, OnInit } from '@angular/core';
import { MarcaService } from '../../services/marca.service';

@Component({
  selector: 'app-marca-form',
  templateUrl: './marca-form.component.html',
  styleUrls: ['./marca-form.component.css']
})
export class MarcaFormComponent implements OnInit {
  marca: any[] = [];

  constructor(private marcaService: MarcaService) { }

  ngOnInit() {
    this.marcaService.getMarcas().subscribe(marca => {
      this.marca = marca
      console.log("MARCAS", this.marca);
    });
  }
}
