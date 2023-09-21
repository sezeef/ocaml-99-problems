(** Find the last two elements of a list *)

let rec last_two = function
    | [] | [_] -> None
    | [x; y] -> Some (x, y)
    | _ :: t -> last_two t;;

let print_optional_pair = function
  | Some (x, y) -> print_endline ("(" ^ string_of_int x ^ ", " ^ string_of_int y ^ ")")
  | None -> print_endline "None"


let () =
    let r1 = last_two [] in
    let r2 = last_two [1] in
    let r3 = last_two [1; 2] in
    let r4 = last_two [1; 2; 3] in
    print_optional_pair r1;
    print_optional_pair r2;
    print_optional_pair r3;
    print_optional_pair r4
