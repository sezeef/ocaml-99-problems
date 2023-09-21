(** Find the number of elements in a list *)

let rec length_aux c = function
    | [] -> c
    | h :: t -> length_aux (c+1) t

let length l = length_aux 0 l

let () =
    let r1 = length [] in
    let r2 = length [1; 2; 3] in
    print_int r1; print_newline ();
    print_int r2; print_newline ()
