#
# PipelineOrientedScripts.ps1
#

#
#How to make script, function, or script block takes input from the pipeline
#
#use the begin(initialization), process(per-record processing), and end(cleanup portions) keywords
#

function Counter
{
	begin
	{
		$count = 0
	}

	#Go through each element in the pipeline
	process
	{
		write "Current item:$_"
		$count++	
	}
	end
	{
		$count
	}
}

dir | Counter
#Output
#Current item:dicom_log
#Current item:Intel
#Current item:PerfLogs
#Current item:Program Files
#Current item:Program Files (x86)
#Current item:Users
#Current item:Windows