
proc filterrib { infile } {
	set word "Total"
	
	set n 0
	
	set f [open $infile]
	
	set tempfile "store.txt"
  
    # open/create a temp file
    set out [open $tempfile w]
	
	while {[gets $f line] >= 0} {
		incr n
		if {[string match $word* $line]} {
			puts "Line $n"
			puts $out $line
			
		}
		
	}
	close $f
	close $out
}
filterrib spartan_3e.txt
