(** Find out whether a list is a palindrome. *)

let is_pal l = l = List.rev l

let () =
    let r1 = is_pal [] in
    let r2 = is_pal [1] in
    let r3 = is_pal [1; 2] in
    let r4 = is_pal [1; 2; 1] in
    let r5 = is_pal [1; 2; 2; 1] in
    print_endline (string_of_bool r1);
    print_endline (string_of_bool r2);
    print_endline (string_of_bool r3);
    print_endline (string_of_bool r4);
    print_endline (string_of_bool r5)
