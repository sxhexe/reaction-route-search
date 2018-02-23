def train(nIter, stepSize, decay, nThreads):
    import tensorflow as tf
    import numpy as np
    data  = open("w8a.txt")
    labels = []
    indices = []
    shape = [59245, 300]
    values = []
    m = 0
    for line in data:
        words = line.split()
        for i, word in enumerate(words):
            if i == 0:
                labels.append(float(word))
            else:
                y, value = word.split(':')
                indices.append([m, int(y)-1])
                values.append(float(value))
        m += 1

    learning_rate = stepSize
    x = tf.sparse_to_dense(indices, shape, values)
    x = tf.cast(x, tf.float64)
    w = tf.get_variable('w', [300], tf.float64)
    y = tf.tensordot(x, w, [[1], [0]])
    true_labels = tf.placeholder(tf.float64, shape=[59245])
    expo = tf.exp(-tf.multiply(true_labels, y))
    log = tf.log(1.0+expo)
    loss = tf.reduce_sum(log)

    sess = tf.Session(config=tf.ConfigProto(intra_op_parallelism_threads=nThreads, inter_op_parallelism_threads=nThreads))
    init = tf.assign(w, [0.0 for _ in range(300)])
    sess.run(init)
    gradients = tf.gradients(loss, w)

    import timeit
    start = timeit.default_timer()
    for i in range(nIter):
        g = np.array(sess.run(gradients, {true_labels: labels}))[0]
        sess.run(tf.assign_add(w, -learning_rate * g))
        if i % 10 == 0:
            print(sess.run(loss, {true_labels: labels}))
        learning_rate -= decay
    end = timeit.default_timer()
    print('time used: {}s'.format(end - start))

if __name__ == '__main__':
    print('What is the number of iterations?')
    nIter = int(input())
    print('What is your step size? (used tf.float64 to fix the NaN problem. It runs slower now. )')
    stepSize = float(input())
    print('What is your step size decay per iteration?')
    decay = float(input())
    print('What is the number of threads your want to use? 0 for default (maximum allowed)')
    nThreads = int(input())
    train(nIter, stepSize, decay, nThreads)
