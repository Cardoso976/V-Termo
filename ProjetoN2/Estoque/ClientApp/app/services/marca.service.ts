import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import 'rxjs/add/operator/map'

@Injectable()
export class MarcaService {

  constructor(private http: Http) { }

  getMarcas(){
    return this.http.get('/api/marcas')
      .map(res => res.json());
  }

}