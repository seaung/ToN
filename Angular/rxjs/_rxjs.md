#### 操作符详解
>>>
    1. map操作符
       public map(project: function(value: T, index:number):R, thisArg:any):Observable<R>
       将给定的project函数应用于源Observable发出的每个值，并将结果作为Observable发出

       ---1---2---3---|--->
           map(x => 10*x)
       ---10---20---30---|--->

       var clicks = Rx.Observable.fromEvent(document, 'click');
       var positions = click.map(ev => ev.clientX);
       positions.subscribe(x => console.log(x));

    2. mapTo操作符
       public mapTo(value:any): Observable
       每次源Observale发出值时，都在输出Observale上发出给定的常量值
       类似于map，但它每一次都把源映射成同一个输出值

       ---1---2---3---|--->
           mapTo(a)
       ---a---a---a---|--->

       var clicks = Rx.Observable.fromEvent(document, 'click');
       var grettings = clicks.mapTo('Hi');
       grettings.subscribe(x => console.log(x));

    3. filter操作符
       public filter(predicate:function(value: T, index:number): boolean, thisArg: any): Observable
       通过只发送源Observable的中满足指定predicate函数的项来进行过滤

       ---0---1---2---3---4---|--->
           filter(x => x % 2 === 2)
       -------1-------3-------|--->

       var clicks = Rx.Observable.fromEvent(document, 'click');
       var clicksOnDics = clicks.filter(ev => ev.target.tagName === 'DIV');
       clicksOnDics.subscribe(x => console.log(x));

    4. catch操作符
       public catch(selector: function): Observable
       捕获observable中的错误,可以通过返回一个新的observable或者抛出错误对象来处理

       ---a---b-----X--->

                   ---1---2---3---|--->

      catch

      ---a---b-------1---2---3---|--->

      当发生错误的时候通过返回一个新的Observable继续运行

      Observable.of(1, 2, 3, 4, 5)
        .map(n => {
              if (n == 4) {
                throw "four!"
              }
              return n;
          })
          .catch(error => Observable.of("1", "2", "3", "4", "5"))
          .subscribe(x => console.log(x));

    5. merge操作符
       public merge(other: ObservableInput, concurrent: number, scheduler: Scheduler): Observable
       创建一个输出Observable，它可以同时发出每个给定的输入Observable中所有的值

       通过把多个Observable的值混合到一个Observable中来将其打平

       ---a---b---c---|--->

       ---d---e---f---|--->

       merge

       ---a---d---b---e---c---f---|--->

       merge 订阅每个给定的输入 Observable (给定的源或作为参数的 Observable )，然后只是 将所有输入 Observables 的所有值发送(不进行任何转换)到输出 Observable 。所有的输入 Observable 都完成了，输出 Observable 才能完成。任何由输入 Observable 发出的错误都 会立即在输出 Observalbe 上发出

       合并两个Observables：时间间隔为1秒的timer和clicks

       var clicks = Rx.Observable.fromEvent(document, 'click');
       var timer = Rx.Observable.interval(1000);
       var clicksOrTimer = clicks.merge(timer);
       clicksOrTimer.subscribe(x => console.log(x));

   6. switchMap操作符
      public switchMap(project:function(value: T, ?index: number): ObservableInput, resultSelector: function(outerValue: T, innerValue: i, outerIndex: number, innerIndex: number): any): Observable

      将每个源值投射成Observable，该Observable会合并到输出Observable中，并且只发出最新投射的Observable中的值

      将每个值映射成Observable，然后使用switch打平所有的内部Observable

      ---1------3---5---|--->

         10---10---10---|--->

         switchMap(i => 10*——10*i——10*i——|)

     ---10---10---10---30---30-50---50---50---|--->

     每次点击返回一个interval Observable
     var clicks = Rx.Observable.fromEvent(document, 'click');
     var result = clicks.switchMap((ev) => Rx.Observable.interval(1000));
     result.subscribe(x => console.log(x));
