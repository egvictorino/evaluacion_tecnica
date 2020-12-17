import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'front-end';
  totalAngularPackages;

  form: FormGroup;

  constructor(private _builder: FormBuilder, private _http: HttpClient){
    this.form = this._builder.group({
      nombre: ['',Validators.required],
      email: ['', Validators.compose([Validators.email, Validators.required])],
      telefono: ['',Validators.compose([Validators.required, Validators.pattern(/^[0-9]\d{6,18}$/)])],
      fecha: ['',Validators.required],
      ciudad: ['',Validators.required]
    })
    this._http.get('http://localhost:51923/').subscribe(data => console.log(data))
  }
  


  enviar(values){
    console.log(values)
  }

  
}
