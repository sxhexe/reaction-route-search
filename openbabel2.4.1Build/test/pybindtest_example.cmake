
  SET(ENV{PYTHONPATH} /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/scripts/python:/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib)
  SET(ENV{LD_LIBRARY_PATH} /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/scripts/python:/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib:$ENV{LD_LIBRARY_PATH})
  SET(ENV{BABEL_LIBDIR} /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/)
  SET(ENV{BABEL_DATADIR} /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data)
  MESSAGE("/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/scripts/python:/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib")
  EXECUTE_PROCESS(
  	COMMAND /home/reactionroutesearch/.virtualenvs/mydjango3/bin/python /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/test/testexample.py 
  	#WORKING_DIRECTORY @LIBRARY_OUTPUT_PATH@
  	RESULT_VARIABLE import_res
  	OUTPUT_VARIABLE import_output
  	ERROR_VARIABLE  import_output
  )
  
  # Pass the output back to ctest
  IF(import_output)
    MESSAGE(${import_output})
  ENDIF(import_output)
  IF(import_res)
    MESSAGE(SEND_ERROR ${import_res})
  ENDIF(import_res)
