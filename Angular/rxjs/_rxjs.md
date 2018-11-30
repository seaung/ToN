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
