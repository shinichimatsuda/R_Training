# Recode cls_students as cls_type
evals <- evals %>%
  mutate(cls_type = case_when(
    cls_students <= 18 ~ "small",
    cls_students > 18 & cls_students < 60 ~ "midsize",
    cls_students >= 60 ~ "large"
    )
  )
