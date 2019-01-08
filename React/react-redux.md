#### 安装
>

    yarn add react-redux

    or

    npm install --save react-redux

#### Provider和connect
>

    react-redux提供了<Provider />用于让整个应用都能访问到store里面的数据

    import React from 'react';
    import ReactDOM from 'react-dom';

    import { Provider } from 'react-redux';
    import store from './store';

    import App from './App';

    const root = document.getElementById("root");

    ReactDOM.render(
      <Provider store={store}>
        <App />
      </Provider>,
      root
      );

    react-redux提供了一个connect函数用于把组件和store里面的数据进行一个连接

    如下：

    import { connect } from 'react-redux';
    import { increment, decrement, reset } from './actionCreators';

    const mapStateToProps = (state) => {
      return {
        counter: state.counter
      };
    }

    const mapDispatchToProps = { increment, decrement, reset };

    export default connect(mapStateToProps, mapDispatchToProps)(Counter)

#### connect函数使用mapstateToProps解析数据
>

    作为connect函数的第一个参数，mapStateToProps用于数据存储的一部分，连接组件的需求

    1. 每次调用它都会引起store中state里面的数据的改变

    2. 他接受整个store里面的state并且应该返回这个组件所需的一个对象

#### 定义mapstateToProps
>

    mapStateToProps应该定义成一个函数

    function mapStateToProps(state, ownProps?)

    1. 第一个参数应该叫state，第二个可选参数应该叫ownProps，并且返回一组对象

    function mapStateToProps(state) {
      return {
        // object
      }
    }

#### connect函数使用mapDispatchToProps来派发action
>

    作为connect函数的第二个参数，mapDispatchToProps用于派发action到store上

    dispatch是一个redux store里面的函数，你可以使用store.dispath去派发action，
    这个方法是唯一一个去触发改变state的函数

    1. 第一个参数是dispatch和第二个参数是可选的ownProps

    定义如下：

    const mapDispatchToProps = (dispatch) => {
      increment: () => dispatch({type: 'INCREMENT'}),
      decrement: () => dispatch({type: 'DECREMENT'}),
      reset: () => dipatch({type: 'RESET'})
    }
