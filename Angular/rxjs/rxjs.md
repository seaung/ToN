#### Rxjs
>>>
    Rxjs：把任何变化想象成事件流

#### 常用Rxjs操作符
>>>
    创建类操作符
    1. from：可以把数组，promise，以及Iterable转化为Observable
    2. fromEvent：把事件转化为Observable
    3. of：接受一系列的数据，并把他们emit出去
    4. INterval， Timer

    常见转换操作符
    1. map
    2. mapTo
    3. pluck

    常见工具操作符
    1. do

    常见变化操作符
    1. scan

    常见数学操作符
    1. reduce

    常见过滤操作符
    1. filter：条件过滤
    2. take：只取前面第几个
    3. skip：跳过前面几个
    4. first
    5. last
    6. distinct
    7. distinctUntilchange
    8. debounce，debounceTime

    常见合并类操作符
    1. combineLatest，withLatestrom
    2. merge，concat，startWith

#### Observable的性质
>>>
    三种状态

    1. next
    2. error
    3. complete

#### 举个栗子
>>>
    1. 来自一个或多个值

    Rx.Observable.of('of', 'bar')

    2. 来自数组

    Rx.Observable.from([1, 2, 3])

    3. 来自事件

    Rx.Observable.fromEvent(document.querySelector('button'), 'click')

    4. 来自promise

    Rx.Observable.fromPromise(fetch('/users'))

#### pipe操作符的用法
>>>
    import { range } from 'rxjs/observable/range';
    import { map, filter, scan } from 'rxjs/operators';

    const = source$ = range(0, 10);

    source$.pip(
      filter(x => x % 2 === 0),
      map(x => x + x),
      scan((acc, x) => acc + x, 0)
      )
      .subscribe(x => console.log(x))
