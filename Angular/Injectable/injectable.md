#### @Inject()
>>>
    @Inject()是一个手动机制，让Angular知道必须注入参数，他可以这样使用

    import { Component, Inject } from '@angular/core';
    import { Hamburger } from '../services/hamburger';

    @Component({
      selector: 'app',
      template: `Bun Type : {{ bunType }}`
      })
      export class App {
        bunType: string;
        constructor(
          @Inject(Hamburger) h
          ) {
            this.bunType = h.bun.type
          }
      }

#### @Injectable()
>>>
    import { Injectable } from '@angular/core';
    import { AuthService } from './auth-service';
    import { AuthWidget } from './auth-widget';
    import { ChatSocket } from './char-socket';

    @Injectable()
    export class ChatWidget {
      constructor(
        public authService: AuthService,
        public authWidget: AuthWidget,
        public chatSocket: ChatSocket
        )
    }
