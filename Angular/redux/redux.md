#### Redux核心概念
>
    1. 应用的所有数据都放在一个叫作state的数据结构中，而state存放在store中
    2. 应用从store中读取state
    3. store永远不会被直接修改
    4. action描述发生了什么，由用户交互(和其他代码)触发
    5. 通过一个叫做reducer的函数来结合旧的state和action创建出新的state


    -------------          ---------------        ---------------
    |   action   |-------->|   reducer   |------->|  new state   |
    -------------          --------------         ---------------
                            ^  
    ----------------        |
    |    old state  |-------
    ----------------

#### reducer
>
    1. 接收旧的state和action并返回新的state
    2. reducer必须是一个纯函数
       a. 他不直接修改当前的state
       b. 他不会使用参数之外的任何数据

#### Action
>
    1. action: 定义要做什么(能带可选参数)

#### State
>
    1. State: 储存应用中的所有数据

##### 计数器例子
>
    1. 创建actions
    import { Action } from '@ngrx/store';

    export enum ActionTypes {
      Increment = '[Counter Component] Increment',
      Decrement = '[Counter Component] Decrement',
      Reset = '[Counter Component] Reset',
    }

    export class Increment implements Action {
      readonly type = ActionTypes.Increment;
    }

    export class Decrement implements Action {
      readonly type = ActionTypes.Decrement;
    }

    export class Reset implements Action {
      readonly type = ActionTypes.Reset;
    }

    2. 编写reducer

    import { Action } from '@ngrx/store';
    import { ActionTypes } from './counter.actions';

    export const = initialState = 0;

    export function counterReducer(state = initialState, action: Action) {
      switch (action.type) {
        case ActionTypes.Increment:
          return state + 1;
        case ActionTypes.Decrement:
          return state - 1;
        case ActionTypes.Reset:
          return 0;
        default:
          return state;
      }
    }

    3. 注入reducer

    import { StoreModule } from '@ngrx/store';
    import { counterReducer } from './counter.reducers';

    import { BroserModule } from '@angular/platform-browser';
    import { NgModule } from '@angular/core';
    import { AppComponent } from './app.component';

    @NgModule({
      declarations: [AppComponent],
      imports: [
        BroserModule,
        StoreModule.forRoot({ count: counterReducer })
      ],
      providers: [],
      bootstrap: [AppComponent]
      })
      export class AppModule { }

    4. 编写counter UI组件

       import { Component } from "@angular/core";
       import { Store, select } from '@ngrx/store';
       import { Observable } from 'rxjs';
       import { Increment, Decrement, Reset } from '../counter.actions';

       @Component({
         selector: 'app-counter',
         template: `
           <button (click)="increment()">Increment</button>
           <div>current count: {{ count$ | async }}</div>
           <button (click)="decrement()">Decrement</button>
           <button (click)="reset()">Reset</button>
         `
         })
         export class CounterComponent {
           count$ = Observable<number>;
           constructor(private store: Store<{ count: number}>) {
             this.count$ = store.pip(select('count'));
           }

           increment() {
             this.store.dispatch(new Increment());
           }

           decrement() {
             this.store.dispatch(new Decrement());
           }

           reset() {
             this.store.dispatch(new Reset());
           }
         }
