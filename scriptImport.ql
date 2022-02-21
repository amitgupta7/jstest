/**
 * @name JS Lib in Script Tag
 * @description JS Lib in Script Tag
 * @kind problem
 * @problem.severity Medium
 * @id js/lib-script-tag
 * @tags security
 */
import javascript
import HTML


from HTML::Attribute attr, string libName
where attr.getName() = "src" and
attr.getElement() instanceof ScriptElement and 
libName = attr.getValue().regexpCapture(".*(?:^|/)(.*)", 1) 
select attr, libName+" defined in script tag and may be unsafe"
