(* let read_int_ans = Array.create 1 0 in *)
(* let read_int_s = Array.create 1 0 in *)
(* (\* / 2, * 2はparser.mlyで左・右シフトに変換されるので使ってよい *\) *)
(* let rec mul_sub a b = *)
(*   if b = 0 then 0 *)
(*   else *)
(*     let b_mod_2 = b - (b / 2) * 2 in *)
(*     if b_mod_2 = 0 then *)
(*       (mul_sub (a * 2) (b / 2)) *)
(*     else *)
(*       (mul_sub (a * 2) (b / 2)) + a *)
(* in *)
(* mul_sub 10 10 *)
(* (\* read_int_and.(0) + read_int_s.(0) *\) *)

let x = 1 in
let rec test a =
  a * 2	(* SLL a x *)
in
print_int (test x)


(*
-iter 1 なら大丈夫
[{AsmMy.name = Id.L "mul_sub.1730"; AsmMy.args = ["a.1731"; "b.1732"];
  AsmMy.fargs = [];
  AsmMy.body =
   AsmMy.Let (("Ti1713.1735", Type.Int), AsmMy.Set 0,
    AsmMy.Ans
     (AsmMy.IfEq ("b.1732", AsmMy.V "Ti1713.1735", AsmMy.Ans (AsmMy.Set 0),
       AsmMy.Let (("Ti1714.1750", Type.Int), AsmMy.Set 1,
        AsmMy.Let (("Ti1715.1748", Type.Int),

         AsmMy.SRA ("b.1732", AsmMy.V "Ti1714.1750"),
         AsmMy.Let (("Ti1716.1749", Type.Int), AsmMy.Set 1,
          AsmMy.Let (("Ti1717.1747", Type.Int),
           AsmMy.SLL ("Ti1715.1748", AsmMy.V "Ti1716.1749"),
           AsmMy.Let (("b_mod_2.1736", Type.Int),
            AsmMy.Sub ("b.1732", AsmMy.V "Ti1717.1747"),
            AsmMy.Ans
             (AsmMy.IfEq ("b_mod_2.1736", AsmMy.V "Ti1713.1735",
               AsmMy.Let (("Ti1719.1746", Type.Int), AsmMy.Set 1,
                AsmMy.Let (("Ti1720.1743", Type.Int),
                 AsmMy.SLL ("a.1731", AsmMy.V "Ti1719.1746"),
                 AsmMy.Let (("Ti1721.1745", Type.Int), AsmMy.Set 1,
                  AsmMy.Let (("Ti1722.1744", Type.Int),
                   AsmMy.SRA ("b.1732", AsmMy.V "Ti1721.1745"),
                   AsmMy.Ans
                    (AsmMy.CallDir (Id.L "mul_sub.1730",
                      ["Ti1720.1743"; "Ti1722.1744"], [])))))),
               AsmMy.Let (("Ti1723.1742", Type.Int), AsmMy.Set 1,
                AsmMy.Let (("Ti1724.1739", Type.Int),
                 AsmMy.SLL ("a.1731", AsmMy.V "Ti1723.1742"),
                 AsmMy.Let (("Ti1725.1741", Type.Int), AsmMy.Set 1,
                  AsmMy.Let (("Ti1726.1740", Type.Int),
                   AsmMy.SRA ("b.1732", AsmMy.V "Ti1725.1741"),
                   AsmMy.Let (("Ti1727.1738", Type.Int),
                    AsmMy.CallDir (Id.L "mul_sub.1730",
                     ["Ti1724.1739"; "Ti1726.1740"], []),
                    AsmMy.Ans (AsmMy.Add ("Ti1727.1738", AsmMy.V "a.1731")))))))))))))))));
  AsmMy.ret = Type.Int}]
*)

(*
-iter 2 でなぜかクロージャになる
[{AsmMy.name = Id.L "mul_sub.1678"; AsmMy.args = ["a.1679"; "b.1680"];
  AsmMy.fargs = [];
  AsmMy.body =
   AsmMy.Let (("Ti1656.1702", Type.Int), AsmMy.Ld ("$r28", AsmMy.C 8),
    AsmMy.Let (("Ti1655.1701", Type.Int), AsmMy.Ld ("$r28", AsmMy.C 4),
     AsmMy.Ans
      (AsmMy.IfEq ("b.1680", AsmMy.V "Ti1656.1702", AsmMy.Ans (AsmMy.Set 0),
        AsmMy.Let (("Ti1663.1696", Type.Int),
         AsmMy.SRA ("b.1680", AsmMy.V "Ti1655.1701"),
         AsmMy.Let (("Ti1665.1695", Type.Int),
          AsmMy.SLL ("Ti1663.1696", AsmMy.V "Ti1655.1701"),
          AsmMy.Let (("b_mod_2.1684", Type.Int),
           AsmMy.Sub ("b.1680", AsmMy.V "Ti1665.1695"),
           AsmMy.Ans
            (AsmMy.IfEq ("b_mod_2.1684", AsmMy.V "Ti1656.1702",
              AsmMy.Let (("Ti1668.1691", Type.Int),
               AsmMy.SLL ("a.1679", AsmMy.V "Ti1655.1701"),
               AsmMy.Let (("Ti1670.1692", Type.Int),
                AsmMy.SRA ("b.1680", AsmMy.V "Ti1655.1701"),
                AsmMy.Ans
                 (AsmMy.CallCls ("mul_sub.1678",
                   ["Ti1668.1691"; "Ti1670.1692"], [])))),
              AsmMy.Let (("Ti1672.1687", Type.Int),
               AsmMy.SLL ("a.1679", AsmMy.V "Ti1655.1701"),
               AsmMy.Let (("Ti1674.1688", Type.Int),
                AsmMy.SRA ("b.1680", AsmMy.V "Ti1655.1701"),
                AsmMy.Let (("Ti1675.1686", Type.Int),
                 AsmMy.CallCls ("mul_sub.1678",
                  ["Ti1672.1687"; "Ti1674.1688"], []),
                 AsmMy.Ans (AsmMy.Add ("Ti1675.1686", AsmMy.V "a.1679"))))))))))))));
  AsmMy.ret = Type.Int}]
*)
(* 残念ながら共通部分式除去によってクロージャを作り出してる
- : KNormal.t * KNormal.t =
(KNormal.Let (("Ti1755.1801", Type.Int), KNormal.Int 1,
  KNormal.Let (("Ti1756.1802", Type.Int), KNormal.Int 0,
   KNormal.Let (("read_int_ans.1776", Type.Array Type.Int),
    KNormal.ExtFunApp ("create_array", ["Ti1755.1801"; "Ti1756.1802"]),
    KNormal.Let (("Ti1757.1799", Type.Int), KNormal.Int 1,
     KNormal.Let (("Ti1758.1800", Type.Int), KNormal.Int 0,
      KNormal.Let (("read_int_s.1777", Type.Array Type.Int),
       KNormal.ExtFunApp ("create_array", ["Ti1757.1799"; "Ti1758.1800"]),
       KNormal.LetRec
        ({KNormal.name =
           ("mul_sub.1778", Type.Fun ([Type.Int; Type.Int], Type.Int));
          KNormal.args = [("a.1779", Type.Int); ("b.1780", Type.Int)];
          KNormal.body =
           KNormal.Let (("Ti1761.1783", Type.Int), KNormal.Int 0,
            KNormal.IfEq ("b.1780", "Ti1761.1783", KNormal.Int 0,
             KNormal.Let (("Ti1762.1798", Type.Int), KNormal.Int 1,
              KNormal.Let (("Ti1763.1796", Type.Int),
               KNormal.SRA ("b.1780", "Ti1762.1798"),
               KNormal.Let (("Ti1764.1797", Type.Int), KNormal.Int 1,
                KNormal.Let (("Ti1765.1795", Type.Int),
                 KNormal.SLL ("Ti1763.1796", "Ti1764.1797"),
                 KNormal.Let (("b_mod_2.1784", Type.Int),
                  KNormal.Sub ("b.1780", "Ti1765.1795"),
                  KNormal.IfEq ("b_mod_2.1784", "Ti1761.1783",
                   KNormal.Let (("Ti1767.1794", Type.Int), KNormal.Int 1,
                    KNormal.Let (("Ti1768.1791", Type.Int),
                     KNormal.SLL ("a.1779", "Ti1767.1794"),
                     KNormal.Let (("Ti1769.1793", Type.Int), KNormal.Int 1,
                      KNormal.Let (("Ti1770.1792", Type.Int),
                       KNormal.SRA ("b.1780", "Ti1769.1793"),
                       KNormal.App ("mul_sub.1778",
                        ["Ti1768.1791"; "Ti1770.1792"]))))),
                   KNormal.Let (("Ti1771.1790", Type.Int), KNormal.Int 1,
                    KNormal.Let (("Ti1772.1787", Type.Int),
                     KNormal.SLL ("a.1779", "Ti1771.1790"),
                     KNormal.Let (("Ti1773.1789", Type.Int), KNormal.Int 1,
                      KNormal.Let (("Ti1774.1788", Type.Int),
                       KNormal.SRA ("b.1780", "Ti1773.1789"),
                       KNormal.Let (("Ti1775.1786", Type.Int),
                        KNormal.App ("mul_sub.1778",
                         ["Ti1772.1787"; "Ti1774.1788"]),
                        KNormal.Add ("Ti1775.1786", "a.1779"))))))))))))))},
        KNormal.Let (("Ti1759.1781", Type.Int), KNormal.Int 10,
         KNormal.App ("mul_sub.1778", ["Ti1759.1781"; "Ti1759.1781"]))))))))),
 KNormal.Let (("Ti1755.1801", Type.Int), KNormal.Int 1,
  KNormal.Let (("Ti1756.1802", Type.Int), KNormal.Int 0,
   KNormal.Let (("read_int_ans.1776", Type.Array Type.Int),
    KNormal.ExtFunApp ("create_array", ["Ti1755.1801"; "Ti1756.1802"]),
    KNormal.Let (("read_int_s.1777", Type.Array Type.Int),
     KNormal.ExtFunApp ("create_array", ["Ti1755.1801"; "Ti1756.1802"]),
     KNormal.LetRec
      ({KNormal.name =
         ("mul_sub.1778", Type.Fun ([Type.Int; Type.Int], Type.Int));
        KNormal.args = [("a.1779", Type.Int); ("b.1780", Type.Int)];
        KNormal.body =
         KNormal.IfEq ("b.1780", "Ti1756.1802", KNormal.Int 0,
          KNormal.Let (("Ti1763.1796", Type.Int),
           KNormal.SRA ("b.1780", "Ti1755.1801"),
           KNormal.Let (("Ti1765.1795", Type.Int),
            KNormal.SLL ("Ti1763.1796", "Ti1755.1801"),
            KNormal.Let (("b_mod_2.1784", Type.Int),
             KNormal.Sub ("b.1780", "Ti1765.1795"),
             KNormal.IfEq ("b_mod_2.1784", "Ti1756.1802",
              KNormal.Let (("Ti1768.1791", Type.Int),
               KNormal.SLL ("a.1779", "Ti1755.1801"),
               KNormal.Let (("Ti1770.1792", Type.Int),
                KNormal.SRA ("b.1780", "Ti1755.1801"),
                KNormal.App ("mul_sub.1778", ["Ti1768.1791"; "Ti1770.1792"]))),
              KNormal.Let (("Ti1772.1787", Type.Int),
               KNormal.SLL ("a.1779", "Ti1755.1801"),
               KNormal.Let (("Ti1774.1788", Type.Int),
                KNormal.SRA ("b.1780", "Ti1755.1801"),
                KNormal.Let (("Ti1775.1786", Type.Int),
                 KNormal.App ("mul_sub.1778", ["Ti1772.1787"; "Ti1774.1788"]),
                 KNormal.Add ("Ti1775.1786", "a.1779")))))))))},
      KNormal.Let (("Ti1759.1781", Type.Int), KNormal.Int 10,
       KNormal.App ("mul_sub.1778", ["Ti1759.1781"; "Ti1759.1781"]))))))))
*)
