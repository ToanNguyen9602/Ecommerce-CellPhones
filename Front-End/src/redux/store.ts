import { configureStore } from "@reduxjs/toolkit";
import cartReducers from "@/redux/cart/slice";
import { cartApi } from "@/redux/cart/services";
import { setupListeners } from "@reduxjs/toolkit/query";
import { useDispatch, useSelector } from "react-redux";
import LoginModalReducers from "@/redux/login/slice";

export const store = configureStore({
  reducer: {
    login: LoginModalReducers,
    cart: cartReducers,
    [cartApi.reducerPath]: cartApi.reducer,
  },
  middleware: (getDefault) => getDefault().concat(cartApi.middleware),
  // middleware: (getDefault) => getDefault().concat(tokenAPI.middleware),
});

// optionnal nhưng bắt buộc khi dùng feretchOnFocus, feretchOnConnect
// setupListeners(store.dispatch);

// Infer the `RootState` and `AppDispatch` types from the store itself
export type RootState = ReturnType<typeof store.getState>;
// Inferred type: {posts: PostsState, comments: CommentsState, users: UsersState}
export type AppDispatch = typeof store.dispatch;

export const useAppDispatch = useDispatch.withTypes<AppDispatch>();
export const useAppSelector = useSelector.withTypes<RootState>();
