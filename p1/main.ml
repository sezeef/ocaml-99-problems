(* Write a function last : 'a list -> 'a option that returns the last element of a list *)

let rec last = function
    | [] -> None
    | [ x ] -> Some x
    | _ :: t -> last t;;

let print_option_int = function
    | Some x -> print_int x; print_newline ()
    | None -> print_endline "None"


let () =
    let r1 = last [] in
    let r2 = last [5] in
    let r3 = last [1; 2; 3] in
    print_option_int r1;
    print_option_int r2;
    print_option_int r3
