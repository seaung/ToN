#### Effects
>>>
    1. 创建effects

    import { Injectable } from '@angular/core';
    import { HttpClient } from '@angular/common/http';
    import { Action } from '@ngrx/store';
    import { Actions, Effect, ofType } from '@ngrx/effects';
    import { Observable, of } from 'rxjs';
    import { catchError, map, mergeMap } from 'rxjs/operators';

    @Injectable()
    export class AuthEffects {
      @Effect()
      login$: Observable<Action> = this.actions$.pip(
        ofType('LOGIN'),
        mergeMap(action =>
          this.http.post('/auth', action.payload).pip(
            map(data => ({ type: 'LOGIN_SUCCESS', payload: data})),
            catchError(() => of({ type: 'LOGIN_FAILED' }))
            ))
        );

        constructor(private http: HttpClient, private actions$: Actions) {}
    }

    2. 注册EffectsModule到根模块中

    import { EffectsModule } from '@ngrx/effects';
    import { AuthEffects } from './effects/auth.effects';

    @NgModule({
      imports: [
        EffectsModule.forRoot([AuthEffects])
      ]
      })
      export class AppModule { }

    3. 注册特性模块

    import { EffectsModule } from '@ngrx/effects';
    import { AdminEffects } from './effects/admin.effects';

    @NgModule({
      imports: [EffectsModule.forFeature([AdminEffects])],
      })
      export class AdminModule { }

#### Action
>>>
    1. the action interface
       an action in NgRx is made up of a simple interface

       interface Action {
         type: string;
       }

    2. Listed below are examples of actions written as plain javascript objects(POJOS):
       {
         type: '[Auth API] Login Success'
       }

    3. creating action unions

       import { Action } from '@nrgx/store';

       export enum ActionTypes {
         Login = '[Login Page] Login',
       }

       export class Login implements Action {
         readonly type = ActionTypes.Login;

         constructor(public payload: { username: string; password: string}) {}
       }

       export type Union = Login;
