#### Redux 补充
>

    1. 创建reducer,并把它传递给store
    2. 创建store,接受reducer
    3. 编写actionTypes
    4. 创建actionCreatetors
    5. 使用store.dispatch()调用对应的actionTypes来触发某个状态的改变
    6. 使用store.subscribe(handlerEmitEventFunction)来订阅state的改变

#### example
>

    1. 创建reducer

       import { CHANGE_VALUE } from './actionTypes';

       const defaultState = {
         inputValue: '',
         list: []
       }

       export default (state = defaultState, action) => {
         if (action.type === 'CHANGE_VALUE') {
           const newState = JSON.parse(JSON.stringify(state));
           newState.inputValue = action.value;
           return newState;
         }
         return state;
       }

    2. 创建store

       import { createStore } from 'redux';
       import reducer from './reducer';

       const store = createStore(
         reducer,
         window.__REDUX_DEVTOOLS_EXTENSION__ && window.__REDUX_DEVTOOLS_EXTENSION__()
         );
       export default store;

    3. 创建actionTypes

        export const CHANGE_VALUE = 'change_value';
        export const ADD_VALUE = 'add_value';
        export const DELETE_VALUE = 'delete_value';

    4. 创建actionCreators

       import { CHANGE_VALUE } from './actionTypes';

       export const getChageValueAction = (value) => ({
         type: CHANGE_VALUE,
         value
         })

    5. 在组件中使用

       import React, { Component } from 'react';
       import store './store';
       import { getChageValueAction } from './store/actionCreators';

       export default class XXXComponent extends Component {
         constructor(props) {
           super(props);
           this.state = store.getState();
           this.handlerStoreChange = this.handlerStoreChange.bind(this);
           this.handlerBtnClick = this.handlerBtnClick.bind(this);
           store.subscribe(this.handlerStoreChange);
         }

         render() {
           return (
               ...
               ...
               <button type="button" onClick={this.handlerBtnClick}>submit</button>
             )
         }

         handlerBtnClick() {
           const action = getChageValueAction();
           store.dispatch(action);
         }

         handlerStoreChange() {
           this.setState(store.getState());
         }
       }
