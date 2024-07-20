import {
  discoutForMember,
  priceShow,
  priceThrough,
  productToSlug,
  view,
} from "@/lib/ultils";
import Link from "next/link";
import RibbonCustom from "@/components/product/item/badge.ribbon.custom";
import Image from "next/image";
export default function ProductItem({ product }: { product: ProductResponse }) {
  return (
    <Link
      className="group"
      key={`$product-item-${product.id}`}
      href={productToSlug(product)}
    >
      <div className="relative">
        <div className="flex gap-1 flex-col p-[10px] border shadow-md rounded-lg hover:shadow-xl cursor-pointer">
          <RibbonCustom text={`Giảm ${product.discount}%`} />
          <div className="flex justify-center">
            <Image
              className="relative z-0 group-hover:scale-[1.05]"
              width={160}
              height={160}
              alt={product.name}
              src={product.image}
            />
          </div>
          <h2 className="font-bold text-sm h-[60px] line-clamp-3">
            {product.name}
          </h2>
          <div className="flex items-baseline gap-1 font-bold">
            <span className="text-[15px] sm:text-base text-red-500">
              {priceShow(product)}
            </span>
            <span className="line-through text-gray-500 text-[13px] sm:text-sm">
              {priceThrough(product)}
            </span>
          </div>
          <div className="h-5">
            {!!product.discountForMember && (
              <p className="text-[10px] sm:text-[12px]">
                Student giảm thêm đến{" "}
                <span className="text-red-500 text-[12px] sm:text-sm font-bold">
                  {discoutForMember(product)}
                </span>
              </p>
            )}
          </div>
          <div className=" h-12">
            {!!product.description && (
              <p className="text-[12px] line-clamp-2 p-1 bg-[#f3f4f6] border rounded-md">
                {product.description}
              </p>
            )}
          </div>
          <div className="flex items-center border-t py-1">
            <svg
              className="w-4 h-4 text-yellow-300 me-1"
              aria-hidden="true"
              xmlns="http://www.w3.org/2000/svg"
              fill="currentColor"
              viewBox="0 0 22 20"
            >
              <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z" />
            </svg>
            <p className="ms-2 text-sm font-bold text-gray-900 dark:text-white">
              4.95
            </p>
            <span className="w-1 h-1 mx-1.5 bg-gray-500 rounded-full dark:bg-gray-400"></span>
            <span className="text-sm font-medium text-gray-900 underline hover:no-underline dark:text-white">
              {view(product)} reviews
            </span>
          </div>
        </div>
      </div>
    </Link>
  );
}
