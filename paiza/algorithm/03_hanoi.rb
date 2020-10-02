

def hanoi(n, from, to, via)
  if n == 1
    puts "#{n} を#{from} から #{to} へ移す n-1"
  else
    hanoi(n - 1, from, via, to)
    puts "#{n} を#{from} から #{to} へ移すnot 1"
    hanoi(n - 1, via, to, from)
  end
end

hanoi(4, :A, :B, :C)



# 昇順ソート
def selectionSortFunc(value)
  i = 0
  while i < value.length
    minNumber = i # 初期値
    staNumber = i + 1 # 初期値
    # 最小値を検索する処理
    while staNumber < value.length
      if value[staNumber] < value[minNumber]
        minNumber = staNumber
      end
      staNumber += 1
    end
    # 最小値を並びかえる処理
    value[i], value[minNumber] = value[minNumber], value[i]
    i += 1
  end
  return value
end
numbers = [12, 13, 11, 14, 10]
p selectionSortFunc(numbers)

# 降順ソート
def selectionSortFunc(value)
  i = 0
  while i < value.length
    maxNumber = i # 初期値
    staNumber = i + 1 # 初期値
    # 最大値を検索する処理
    while staNumber < value.length
      if value[staNumber] > value[maxNumber]
        maxNumber = staNumber
      end
      staNumber += 1
    end
    # 最大値を並びかえる処理
    value[i], value[maxNumber] = value[maxNumber], value[i]
    i += 1
  end
  return value
end
numbers = [12, 13, 11, 14, 10]
p selectionSortFunc(numbers)