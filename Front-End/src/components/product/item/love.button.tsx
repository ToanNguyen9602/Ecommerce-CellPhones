"use client";
import { Button } from "antd";
import {
  useDeleteLoveMutation,
  usePostLoveMutation,
} from "@/redux/love/services";
import { useAppSelector } from "@/redux/store";
import { useEffect, useState } from "react";
import { FaHeart, FaRegHeart } from "react-icons/fa6";
export default function LoveButton({ productId }: { productId: number }) {
  const loveList = useAppSelector((state) => state.listLove.listLove);
  const [item, setItem] = useState<Love | undefined>(undefined);
  useEffect(() => {
    const _item = loveList.find((item) => item.productId === productId);
    if (_item) setItem(_item);
    else setItem(undefined);
  }, [loveList, productId]);
  if (item) return <Loved id={item.id} />;
  return <NoLove productId={productId} />;
}

const Loved = ({ id }: { id: number }) => {
  const [DeleteAction, { isLoading }] = useDeleteLoveMutation();

  return (
    <Button
      size="small"
      type="text"
      loading={isLoading}
      onClick={() => DeleteAction(id)}
      icon={
        <FaHeart className="text-red-500 hover:scale-[1.2] p-0" size={22} />
      }
    />
  );
};

const NoLove = ({ productId }: { productId: number }) => {
  const [PostAction, { isLoading, isSuccess }] = usePostLoveMutation();
  return (
    <Button
      loading={isLoading}
      size="small"
      type="text"
      onClick={() => PostAction(productId)}
      icon={
        <FaRegHeart className="text-red-500 hover:scale-[1.2] p-0" size={22} />
      }
    />
  );
};
