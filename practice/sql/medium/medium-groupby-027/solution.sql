-- Xom Data · Average score per subject
-- Problem: https://xomdata.com/practice/medium-groupby-027
-- Solved: 2026-08-26

select
    subject_name,
    credits,
    student_count,
    round(raw_avg_score, 2) as avg_score,
    pass_rate,

    rank() over (
        order by raw_avg_score desc
    ) as rank_by_avg,

    ntile(4) over (
        order by raw_avg_score desc, subject_name asc
    ) as difficulty_quartile

from (
    select
        s.subject_name,
        s.credits,
        avg(g.final_score) as raw_avg_score,
        count(g.id) as student_count,

        round(
            100.0 * sum(
                case
                    when g.final_score >= 5 then 1
                    else 0
                end
            ) / nullif(count(g.id), 0),
            2
        ) as pass_rate

    from subjects s
    left join grades g
        on s.id = g.subject_id

    group by
        s.id,
        s.subject_name,
        s.credits
)
order by
    rank_by_avg,
    subject_name;
