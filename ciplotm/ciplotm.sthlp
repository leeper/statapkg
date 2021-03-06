{smcl}
{* 18august2003/18june2015}{...}
{hline}
help for {hi:ciplotm}
{hline}

{title:Plots of confidence intervals} 

{p 8 17 2} 
{cmd:ciplotm} 
{it: varlist}
[{cmd:if} {it:exp}] 
[{cmd:in} {it:range}]
[{it:weight}]  
[{cmd:,}
{cmd:by(}{it:byvar}{cmd:)} 
{cmd:sepby}
{cmdab:miss:ing}
{it:ci_options}
[{cmdab:hor:izontal} {c |} {cmdab:vert:ical}] 
{cmdab:rcap:opts(}{it:rcap_options}{cmd:)} 
{it:scatter_options}]


{title:Description}

{p 4 4 2}
{cmd:ciplotm} produces a display of means and confidence intervals. 
Means are shown by point symbols and intervals by capped bars. 
{cmd:ci} is used for the calculations. 
{cmd:aweight}s and {cmd:fweight}s are allowed; see help on {help weights}. 


{title:Remarks} 

{p 4 4 2}(note added August 2011)

{p 4 4 2}For fuller flexibility, consider using {help statsby} first and then standard graphics commands (Cox 2010). 


{title:Options}

{p 4 8 2}{cmd:by()} defines a grouping variable, which is treated as 
categorical, not measured.

{p 4 8 2}{cmd:sepby} separates alignment of points across values of {cmd:by()}

{p 4 8 2}{cmd:missing}, applicable only with {cmd:by()}, specifies that results
for groups with missing values of {it:byvar} should be included in the display.
The default is to exclude them. 
 
{p 4 8 2}{it:ci_options} are options of {help ci} apart from {cmd:separator()}.

{p 4 8 2}{cmd:horizontal} produces a horizontal display. The default is 
vertical. 

{p 4 8 2}{cmd:rcapopts(}{it:rcap_options}{cmd:)} refers to other options of 
{help twoway_rcap:graph twoway rcap}.  

{p 4 8 2}{it:scatter_options} refers to options of 
{help twoway_scatter:graph twoway scatter}. 


{title:Examples}

{p 4 8 2}{cmd:. webuse citytemp} 

{p 4 8 2}{cmd:. ciplotm heatdd}
                                                                   
{p 4 8 2}{cmd:. ciplotm heatdd cooldd}
                                                                   
{p 4 8 2}{cmd:. ciplotm heatdd, by(division)}
                                                                   
{p 4 8 2}{cmd:. ciplotm heatdd cooldd, by(division) xla(, ang(45))}
                                                                   
{p 4 8 2}{cmd:. ciplotm heatdd, hor}
                                                                   
{p 4 8 2}{cmd:. ciplotm heatdd cooldd, hor}
                                                                   
{p 4 8 2}{cmd:. ciplotm heatdd, by(division) hor}
                                                                   
{p 4 8 2}{cmd:. ciplotm heatdd cooldd, by(division) hor}


{title:Author}

{p 4 4 2}Modifications by Thomas J. Leeper, Aarhus University{break} 
         thosjleeper@gmail.com
{p 4 4 2}Originally by Nicholas J. Cox, Durham University{break} 
         n.j.cox@durham.ac.uk

{title:Acknowledgments} 

{p 4 4 2}Marc Kaulisch reported a problem with blanking out axis titles. 


{title:References} 

{p 4 8 2}Cox, N.J. 2010. 
Speaking Stata: The statsby strategy. 
{it:Stata Journal} 10: 143{c -}151. 


{title:Also see}

{p 4 8 2}Manual: {hi: [R] ci}

{p 4 8 2}On-line: help for {help ci}, {help serrbar}, {help statsby} 
