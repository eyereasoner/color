:- op(1200, xfx, :+).

answer('urn:example:combination'([0, [1, 2, 3, 4, 5]], [])).
answer('urn:example:combination'([1, [1, 2, 3, 4, 5]], [1])).
answer('urn:example:combination'([1, [1, 2, 3, 4, 5]], [2])).
answer('urn:example:combination'([1, [1, 2, 3, 4, 5]], [3])).
answer('urn:example:combination'([1, [1, 2, 3, 4, 5]], [4])).
answer('urn:example:combination'([1, [1, 2, 3, 4, 5]], [5])).
answer('urn:example:combination'([2, [1, 2, 3, 4, 5]], [1, 2])).
answer('urn:example:combination'([2, [1, 2, 3, 4, 5]], [1, 3])).
answer('urn:example:combination'([2, [1, 2, 3, 4, 5]], [1, 4])).
answer('urn:example:combination'([2, [1, 2, 3, 4, 5]], [1, 5])).
answer('urn:example:combination'([2, [1, 2, 3, 4, 5]], [2, 3])).
answer('urn:example:combination'([2, [1, 2, 3, 4, 5]], [2, 4])).
answer('urn:example:combination'([2, [1, 2, 3, 4, 5]], [2, 5])).
answer('urn:example:combination'([2, [1, 2, 3, 4, 5]], [3, 4])).
answer('urn:example:combination'([2, [1, 2, 3, 4, 5]], [3, 5])).
answer('urn:example:combination'([2, [1, 2, 3, 4, 5]], [4, 5])).
answer('urn:example:combination'([3, [1, 2, 3, 4, 5]], [1, 2, 3])).
answer('urn:example:combination'([3, [1, 2, 3, 4, 5]], [1, 2, 4])).
answer('urn:example:combination'([3, [1, 2, 3, 4, 5]], [1, 2, 5])).
answer('urn:example:combination'([3, [1, 2, 3, 4, 5]], [1, 3, 4])).
answer('urn:example:combination'([3, [1, 2, 3, 4, 5]], [1, 3, 5])).
answer('urn:example:combination'([3, [1, 2, 3, 4, 5]], [1, 4, 5])).
answer('urn:example:combination'([3, [1, 2, 3, 4, 5]], [2, 3, 4])).
answer('urn:example:combination'([3, [1, 2, 3, 4, 5]], [2, 3, 5])).
answer('urn:example:combination'([3, [1, 2, 3, 4, 5]], [2, 4, 5])).
answer('urn:example:combination'([3, [1, 2, 3, 4, 5]], [3, 4, 5])).
answer('urn:example:combination'([4, [1, 2, 3, 4, 5]], [1, 2, 3, 4])).
answer('urn:example:combination'([4, [1, 2, 3, 4, 5]], [1, 2, 3, 5])).
answer('urn:example:combination'([4, [1, 2, 3, 4, 5]], [1, 2, 4, 5])).
answer('urn:example:combination'([4, [1, 2, 3, 4, 5]], [1, 3, 4, 5])).
answer('urn:example:combination'([4, [1, 2, 3, 4, 5]], [2, 3, 4, 5])).
answer('urn:example:combination'([5, [1, 2, 3, 4, 5]], [1, 2, 3, 4, 5])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [1, 2, 3, 4, 5])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [1, 2, 3, 5, 4])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [1, 2, 4, 3, 5])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [1, 2, 4, 5, 3])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [1, 2, 5, 3, 4])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [1, 2, 5, 4, 3])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [1, 3, 2, 4, 5])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [1, 3, 2, 5, 4])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [1, 3, 4, 2, 5])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [1, 3, 4, 5, 2])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [1, 3, 5, 2, 4])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [1, 3, 5, 4, 2])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [1, 4, 2, 3, 5])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [1, 4, 2, 5, 3])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [1, 4, 3, 2, 5])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [1, 4, 3, 5, 2])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [1, 4, 5, 2, 3])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [1, 4, 5, 3, 2])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [1, 5, 2, 3, 4])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [1, 5, 2, 4, 3])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [1, 5, 3, 2, 4])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [1, 5, 3, 4, 2])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [1, 5, 4, 2, 3])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [1, 5, 4, 3, 2])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [2, 1, 3, 4, 5])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [2, 1, 3, 5, 4])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [2, 1, 4, 3, 5])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [2, 1, 4, 5, 3])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [2, 1, 5, 3, 4])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [2, 1, 5, 4, 3])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [2, 3, 1, 4, 5])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [2, 3, 1, 5, 4])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [2, 3, 4, 1, 5])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [2, 3, 4, 5, 1])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [2, 3, 5, 1, 4])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [2, 3, 5, 4, 1])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [2, 4, 1, 3, 5])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [2, 4, 1, 5, 3])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [2, 4, 3, 1, 5])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [2, 4, 3, 5, 1])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [2, 4, 5, 1, 3])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [2, 4, 5, 3, 1])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [2, 5, 1, 3, 4])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [2, 5, 1, 4, 3])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [2, 5, 3, 1, 4])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [2, 5, 3, 4, 1])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [2, 5, 4, 1, 3])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [2, 5, 4, 3, 1])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [3, 1, 2, 4, 5])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [3, 1, 2, 5, 4])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [3, 1, 4, 2, 5])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [3, 1, 4, 5, 2])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [3, 1, 5, 2, 4])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [3, 1, 5, 4, 2])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [3, 2, 1, 4, 5])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [3, 2, 1, 5, 4])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [3, 2, 4, 1, 5])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [3, 2, 4, 5, 1])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [3, 2, 5, 1, 4])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [3, 2, 5, 4, 1])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [3, 4, 1, 2, 5])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [3, 4, 1, 5, 2])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [3, 4, 2, 1, 5])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [3, 4, 2, 5, 1])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [3, 4, 5, 1, 2])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [3, 4, 5, 2, 1])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [3, 5, 1, 2, 4])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [3, 5, 1, 4, 2])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [3, 5, 2, 1, 4])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [3, 5, 2, 4, 1])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [3, 5, 4, 1, 2])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [3, 5, 4, 2, 1])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [4, 1, 2, 3, 5])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [4, 1, 2, 5, 3])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [4, 1, 3, 2, 5])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [4, 1, 3, 5, 2])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [4, 1, 5, 2, 3])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [4, 1, 5, 3, 2])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [4, 2, 1, 3, 5])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [4, 2, 1, 5, 3])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [4, 2, 3, 1, 5])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [4, 2, 3, 5, 1])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [4, 2, 5, 1, 3])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [4, 2, 5, 3, 1])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [4, 3, 1, 2, 5])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [4, 3, 1, 5, 2])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [4, 3, 2, 1, 5])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [4, 3, 2, 5, 1])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [4, 3, 5, 1, 2])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [4, 3, 5, 2, 1])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [4, 5, 1, 2, 3])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [4, 5, 1, 3, 2])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [4, 5, 2, 1, 3])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [4, 5, 2, 3, 1])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [4, 5, 3, 1, 2])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [4, 5, 3, 2, 1])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [5, 1, 2, 3, 4])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [5, 1, 2, 4, 3])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [5, 1, 3, 2, 4])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [5, 1, 3, 4, 2])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [5, 1, 4, 2, 3])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [5, 1, 4, 3, 2])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [5, 2, 1, 3, 4])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [5, 2, 1, 4, 3])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [5, 2, 3, 1, 4])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [5, 2, 3, 4, 1])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [5, 2, 4, 1, 3])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [5, 2, 4, 3, 1])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [5, 3, 1, 2, 4])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [5, 3, 1, 4, 2])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [5, 3, 2, 1, 4])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [5, 3, 2, 4, 1])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [5, 3, 4, 1, 2])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [5, 3, 4, 2, 1])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [5, 4, 1, 2, 3])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [5, 4, 1, 3, 2])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [5, 4, 2, 1, 3])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [5, 4, 2, 3, 1])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [5, 4, 3, 1, 2])).
answer('urn:example:permutation'([1, 2, 3, 4, 5], [5, 4, 3, 2, 1])).