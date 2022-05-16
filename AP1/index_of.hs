-- Q1.
index_of xs e = get_index xs e 0
    where get_index [] e acc = -1
          get_index (x:xs) e acc = if x == e
                                   then acc
                                   else get_index xs e (acc + 1)

-- Q2. ?




