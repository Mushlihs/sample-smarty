<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fisrt Project</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
    <div class="w-full h-screen flex justify-center items-center bg-orange-400">
      <div class="w-full flex max-w-md p-4 bg-white rounded-lg shadow-xl">
        <div>

            <p class="text-xl">Hello, {$Name} !</p>
            <p>An example of a section loop:</p>
      
      
          {section name=outer
          loop=$FirstName}
              {if $smarty.section.outer.index %2  == 0}
                  {$smarty.section.outer.rownum} . {$FirstName[outer]} {$LastName[outer]}
              {else}
                  {$smarty.section.outer.rownum} * {$FirstName[outer]} {$LastName[outer]}
              {/if}
              {sectionelse}
              none
          {/section}
          
          <p class="mt-4"> An example of section looped key values:</p>
      
          {section name=sec1 loop=$contacts}
              phone: {$contacts[sec1].phone}
              <br>
      
                  fax: {$contacts[sec1].fax}
              <br>
      
                  cell: {$contacts[sec1].cell}
              <br>
          {/section}
          <p>
      
              testing strip tags
              {strip}
      <table border=0>
          <tr>
              <td>
                  <A HREF="{$SCRIPT_NAME}">
                      <font color="red">This is a test </font>
                  </A>
              </td>
          </tr>
      </table>
          {/strip}
      
      </PRE>
      
      This is an example of the html_select_date function:
      
      <form>
          {html_select_date start_year=1998 end_year=2010}
      </form>
      
      This is an example of the html_select_time function:
      
      <form>
          {html_select_time use_24_hours=false}
      </form>
      
      This is an example of the html_options function:
      
      <form>
          <select name=states>
              {html_options values=$option_values selected=$option_selected output=$option_output}
          </select>
      </form>
        </div>


            <div class="flex flex-none justify-center items-center ml-5 w-16 h-16 rounded-full bg-white font-bold animate-bounce self-end shadow border">A</div>

    </div>

    
      
    </div>
  </body>
</html>
