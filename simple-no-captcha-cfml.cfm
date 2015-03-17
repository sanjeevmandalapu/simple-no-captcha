<cfscript>
	securityMap = {
		'1' : '2 - 1',
		'2' : '1 + 1',
		'3' : '2 + 1',
		'4' : '2 + 2',
		'5' : '4 + 1',
		'6' : '4 + 3',
		'7' : '4 + 3',
		'8' : '4 + 4',
		'9' : '8 + 1',
		'10': '9 + 1'
	};
</cfscript>

<cffunction name="securityMapOutput" access="public" output="true" returntype="string">
	<cfset var _mapCount = structCount(securityMap) />
	<cfset var _randNumber = randRange(1, _mapCount) />

	<cfoutput>
		<label class="description captcha" for="security">How much is #securityMap[_randNumber]# ? *</label>
		<input id="security" name="security" class="element text medium" type="text" maxlength="255" value=""/> 
		<input name="security_ans" type="hidden" value="#_randNumber#"/> 
	</cfoutput>

</cffunction>

<!--- use this in the form somewhere meaningful --->
<cfset securityMapOutput()/>

<!--- 
	- In your post page, the FORM.security and FORM.security_ans should match
	- While this is the most basic/simpler approach, you can add more sauce to it by hashing the security_ans or putting it in the SESSION etc
--->
