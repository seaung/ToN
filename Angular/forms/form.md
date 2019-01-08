#### Angular Form
>
    1. FormsModule
    2. ReactiveFormsModule

    FormsModule提供了如下指令
    1. ngModel
    2. ngForm

    ReactiveFormsModule提供了如下指令
    1. formControl
    2. ngFormGroup

    3. FormControl
    4. FormGroup

    FormControl angular表单中最小的单元，提供了如下字段
    1. valid
    2. errors
    3. dirty

    FormGroup为一组FromControl提供总包接口

    note：FormControl和FormGroup都继承AbstractControl

    5. FormBuilder

#### 举个栗子
>
    import { Component, OnInit } from '@angular/core';
    import { FormGroup, ForomBuilder, Validators } from '@angular/forms';

    @Component({
      selector: 'app-forms',
      templateUrl: './app-forms.html',
      styleUrls: ['./app-forms.css']
      })
      export class AppFormsComponent implements OnInit {
        appForm: FormGroup;
        constructor(private fb: FormBuilder) {}

        ngOnInit() {}

        initForm() {
          const email = '';
          const password = '';

          this.appForm = this.fb.group({
            'email': ['', Validators.compose([Validators.required, Validators.email])],
            'password': ['', Validators.required]
            })
        }

        onSumit() {}
      }

      // in template file

      <form (ngSubmit)='onSumit()' [formGroup]='appForm'>
        <input class="form-control" placeholder="email"/>
        <div *ngif="appForm.get('email').errors && appForm.get('email').touched">invalid.</div>
        <input class="form-control" placeholder="password" />
        <div *ngif="appForm.get('password').errors && appForm.get('password').touched">invalid.</div>
      </form>
