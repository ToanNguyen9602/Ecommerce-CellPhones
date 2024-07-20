import { auth } from "@/auth/auth";

// hard coding
const loginPage = ["/login", "/register"];
const firstLoginPage = "/first-login";
const userPage = ["/smember/:path*", "/cart"];
const adminPage = [];
export default auth((req) => {
  // input var
  const path = req.nextUrl.pathname;
  const callbackUrl = req.nextUrl.searchParams.get("callbackUrl") || "/";
  const newUrl = new URL(callbackUrl || "/", req.nextUrl.origin);
  const isLogin = req.auth;
  const isFirstLogin = !req?.auth?.refreshToken;
  const isUserPage = userPage.includes(path);
  const isLoginPage = loginPage.includes(path);
  const isFirstLoginPage = path === firstLoginPage;

  // logic
  // Trang đăng nhập bằng provider lần đầu
  if (isFirstLoginPage) {
    // + chưa đăng nhập => đăng nhập
    if (!isLogin) {
      const newUrl = new URL(
        `/login?callbackUrl=${callbackUrl}`,
        req.nextUrl.origin
      );
      return Response.redirect(newUrl);
    }
    //  đã đăng nhập, không phải đăng nhập lần đầu => không cho vào
    if (isLogin && !isFirstLogin) {
      return Response.redirect(newUrl);
    }
  }
  // Trang đăng nhập đăng kí
  else if (isLoginPage) {
    // + đã đăng nhập => đá về trang home hoặc callback
    if (isLogin) return Response.redirect(newUrl);
  }
  // Trang user, trang admin (cần đăng nhập)
  else if (isUserPage) {
    // + Chưa đăng nhập => bắt đăng nhập
    if (!isLogin) {
      const newUrl = new URL(`/login?callbackUrl=${path}`, req.nextUrl.origin);
      return Response.redirect(newUrl);
    }
    // + Đã đăng nhập, chưa có token => đăng nhập lần đầu, thêm số đt
    if (isLogin && isFirstLogin) {
      const newUrl = new URL(
        `/first-login?callbackUrl=${path}`,
        req.nextUrl.origin
      );
      return Response.redirect(newUrl);
    }
  }
});

export const config = {
  matcher: [
    "/smember/:path*",
    "/cart/:path*",
    "/login",
    "/register",
    "/first-login",
    // bảo vệ ảnh ??
    // "/((?!api|_next/static|_next/image|favicon.ico).*)",
  ],
};
