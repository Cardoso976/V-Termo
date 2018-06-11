import { ToastyService } from 'ng2-toasty';
import { marca } from './../../models/marca';
import { Component, OnInit } from '@angular/core';
import { MarcaService } from '../../services/marca.service';
import { ActivatedRoute, Router } from '@angular/router';
import { Observable } from 'rxjs/Observable';
import 'rxjs/add/Observable/forkJoin';

@Component({
  selector: 'app-marca-form',
  templateUrl: './marca-form.component.html',
  styleUrls: ['./marca-form.component.css']
})
export class MarcaFormComponent implements OnInit {
  marca: marca = {
    id: 0,
    nome: '',
    ativo: false
  };

  constructor(
    private marcaService: MarcaService,
    private toastyService: ToastyService,
    private route: ActivatedRoute,
    private router: Router,) { 

      route.params.subscribe(p => {
        this.marca.id = +p['id'] || 0;
      });
     }

  ngOnInit() {     
    if(this.marca.id){
      this.marcaService.getMarca(this.marca.id).subscribe(data => {
        if (this.marca.id) {
          this.setMarca(data[0]);
        }
      }, err => {
        if (err.status == 404)
          this.router.navigate(['/home']);
      });
    }
  }
  
  private setMarca(m: marca) {
    this.marca.id = m.id;
    this.marca.nome = m.nome;
    this.marca.ativo = m.ativo;
  } 

  submit(){
    console.log("MARCA", this.marca);
    var result$ = this.marcaService.create(this.marca); 
    result$.subscribe(marca => {
      this.toastyService.success({
        title: 'Sucesso', 
        msg: 'Marca adicionada com sucesso.',
        theme: 'bootstrap',
        showClose: true,
        timeout: 5000
      });
    });    
  }
}
