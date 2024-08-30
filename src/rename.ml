let () =
let target_dir = "/Users/jb/tmp/shell-demo" in
let files = target_dir |> Sys.readdir |> Array.to_list |> List.filter (fun f -> (Filename.extension f) = ".html") in
List.iter (fun f -> 
let nm = Filename.remove_extension (Filename.basename f) in 
let ext = Filename.extension f in
let oldf = (Filename.concat target_dir f) in
let newf = (Filename.concat target_dir (nm ^ "-suffix" ^ ext)) in
Unix.rename oldf newf
) files