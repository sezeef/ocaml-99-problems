(** Find the N'th Element of a List *)

(* let rec at lst n =
    let counter = ref 0 in
    match lst with
    | [] -> None
    | h :: t -> if !counter == n then Some h else (counter := !counter + 1; at t n) *)

(* let rec at lst n c =
    match lst with
    | [] -> None
    | h :: t when c == n -> Some h
    | h :: t -> at t n (c+1) *)

let rec at n = function
    | [] -> None
    | h :: t -> if n = 0 then Some h else at (n-1) t

let () =
    let r1 = at 1 ["2"] in
    let r2 = at 0 [1; 2; 3; 4; 5; 6] in
    match r1 with | Some y -> print_endline y | None -> print_endline "None";
    match r2 with | Some x -> print_int x; print_newline () | None -> print_endline "None"
