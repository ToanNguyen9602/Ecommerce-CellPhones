import type { Metadata } from "next";
import NavSmemver from "@/app/(auth)/smember/_components/nav";

export const metadata: Metadata = {
  title: "Smember | Tri ân khách hàng thân thiết - tích điểm đổi quà",
  description: "Smember | Tri ân khách hàng thân thiết - tích điểm đổi quà",
};
export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <div className="bg-[#f4f6f8]">
      <div className="flex flex-col lg:flex-row py-5 lg:mx-6 gap-6 relative">
        <div className="lg:w-[250px] fixed z-20 w-full px-[10px]">
          <div>
            <NavSmemver />
          </div>
        </div>
        <div className="lg:w-[250px] h-16 flex-shrink-0"></div>
        <main className="flex-1 px-[10px] overflow-hidden">{children}</main>
      </div>
    </div>
  );
}
