package com.jinsheng.spring.boot.freemarker.directive;

import freemarker.core.Environment;
import freemarker.template.*;

import java.io.IOException;
import java.io.Writer;
import java.util.Map;

/**
 * @author jinsheng
 */
public class UpperDirective implements TemplateDirectiveModel {
    @Override
    public void execute(Environment environment, Map map, TemplateModel[] templateModels, TemplateDirectiveBody templateDirectiveBody) throws TemplateException, IOException {
        if (!map.isEmpty()) {
            throw new TemplateModelException(
                    "This directive doesn't allow parameters.");
        }
        if (templateModels.length != 0) {
            throw new TemplateModelException(
                    "This directive doesn't allow loop variables.");
        }

        if (templateDirectiveBody != null) {
            templateDirectiveBody.render(new UpperCaseFilterWriter(environment.getOut()));
        } else {
            throw new RuntimeException("missing body");
        }
    }

    private static class UpperCaseFilterWriter extends Writer {

        private final Writer out;

        UpperCaseFilterWriter (Writer out) {
            this.out = out;
        }

        public void write(char[] cbuf, int off, int len)
                throws IOException {
            char[] transformedCbuf = new char[len];
            for (int i = 0; i < len; i++) {
                transformedCbuf[i] = Character.toUpperCase(cbuf[i + off]);
            }
            out.write(transformedCbuf);
        }

        public void flush() throws IOException {
            out.flush();
        }

        public void close() throws IOException {
            out.close();
        }
    }
}
