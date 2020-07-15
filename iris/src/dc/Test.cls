Class dc.Test {

/// w ##class(dc.Test).Test()
ClassMethod Test(extraClasspaths = "/app/MyClass.dll")
{
	set extraClasspaths = $tr(extraClasspaths,";:","||")
	set GW = ##class(%Net.Remote.Gateway).%New()
	set classpaths = ##class(%ListOfDataTypes).%New()
	for i=1:1:$l(extraClasspaths,"|") set onePath = $p(extraClasspaths,"|",i) if onePath'="" do classpaths.Insert(onePath)

	set sc = GW.%Connect("netgw", 55556, $znspace, 5, classpaths)
	set random = ##class(%Net.Remote.Object).%New(GW,"dc.MyClass")
	quit random.GetRate()

}

}