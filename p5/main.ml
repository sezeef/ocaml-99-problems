(** Reverse a list *)

let rec rev_aux l = function
    | [] -> l
    | h :: t -> rev_aux (h :: l) t

let rev l = rev_aux [] l

let print_list l =
    List.iter (fun x -> Printf.printf "%i " x ) l

let () =
    let r1 = rev [1; 2; 3] in
    print_list r1
    
