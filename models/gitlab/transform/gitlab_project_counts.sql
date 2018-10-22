
with projectdemo as (
    select * from {{ref('gitlab_projectinfo')}}

),
app as (

    select '{{get_versions_schema()}}' as versioninfo, 2 as id 
)

select a.*,b.versioninfo from projectdemo a join app b on a.id =b.id
